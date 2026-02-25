(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))

(assert (str.in_re z (re.++ (re.* (str.to_re "68")) (re.+ (str.to_re "55")))))
(assert (str.in_re y (re.+ (re.+ (re.* (str.to_re "39"))))))
(assert (str.in_re a (re.++ (re.range "4" "8") (re.* (re.* (str.to_re "18"))))))
(assert (str.in_re x (re.* (re.union (re.range "0" "6") (re.union (str.to_re "920") (re.+ (re.range "2" "6")))))))

(assert (<= (+ (* (- 3) (str.to_int x)) (* 4 (str.to_int y)) (* (- 7) (str.to_int z)) (* 3 (str.to_int a))) 35))
(assert (< (+ (* (- 9) (str.len x)) (* (- 5) (str.len y)) (* 8 (str.len z)) (* (- 10) (str.len a))) 41))

(check-sat)