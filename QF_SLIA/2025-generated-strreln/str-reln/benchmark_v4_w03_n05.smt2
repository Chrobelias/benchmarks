(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.+ (str.to_re "384")))))
(assert (str.in_re y (re.+ (re.+ (re.union (re.range "2" "4") (str.to_re "910"))))))
(assert (str.in_re z (re.+ (re.* (str.to_re "12")))))
(assert (str.in_re a (re.+ (re.union (str.to_re "16") (str.to_re "32")))))

(assert (< (+ (- (str.to_int x)) (* 3 (str.to_int y)) (* 8 (str.to_int z)) (* (- 8) (str.to_int a))) 40))
(assert (> (+ (* 9 (str.to_int x)) (* 6 (str.to_int y)) (* (- 4) (str.to_int z)) (* 10 (str.to_int a))) 38))
(assert (> (+ (* (- 8) (str.len y)) (str.len z) (* (- 9) (str.len a))) 80))

(check-sat)