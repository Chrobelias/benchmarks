(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "8") (re.* (str.to_re "4"))) (str.to_re "623")))))
(assert (str.in_re y (re.* (re.+ (re.union (re.range "5" "8") (re.+ (str.to_re "707")))))))
(assert (str.in_re z (re.+ (re.++ (re.* (re.range "7" "9")) (str.to_re "800")))))
(assert (str.in_re a (re.union (str.to_re "4") (re.union (str.to_re "2") (re.* (str.to_re "76"))))))

(assert (> (+ (* 10 (str.len x)) (* 9 (str.len y)) (* (- 5) (str.len z)) (* (- 2) (str.len a))) 43))
(assert (<= (+ (- (str.to_int y)) (* 8 (str.to_int z)) (* 9 (str.to_int a))) 39))
(assert (< (+ (* 4 (str.len x)) (* (- 3) (str.len z)) (* 8 (str.to_int x)) (* 2 (str.to_int a))) 41))
(assert (<= (+ (* 2 (str.len x)) (* (- 3) (str.len y)) (* 8 (str.to_int y)) (* (- 7) (str.to_int z))) 78))

(check-sat)