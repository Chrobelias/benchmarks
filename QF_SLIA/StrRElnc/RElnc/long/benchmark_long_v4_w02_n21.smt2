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

(assert (= z (str.++ y "98" a x "57")))

(assert (str.in_re y (re.union (str.to_re "47") (re.union (re.+ (str.to_re "3")) (str.to_re "82")))))
(assert (str.in_re z (re.* (re.range "4" "9"))))
(assert (str.in_re x (re.union (str.to_re "4") (re.* (str.to_re "495")))))
(assert (str.in_re a (re.+ (str.to_re "57"))))

(assert (< (+ (* (- 7) (str.len x)) (* (- 2) (str.len y)) (* (- 10) (str.len z)) (- (str.len a))) 98))
(assert (> (+ (str.to_int x) (* 5 (str.to_int y)) (* 2 (str.to_int z)) (* (- 8) (str.to_int a))) 95))

(check-sat)