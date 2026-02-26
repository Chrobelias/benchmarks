(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len z) 1000))

(assert (= z (str.++ x y "35" a "65")))

(assert (str.in_re y (re.union (re.range "1" "5") (re.* (str.to_re "67")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "4") (re.+ (str.to_re "0"))) (str.to_re "45"))))
(assert (str.in_re z (re.+ (re.* (re.range "1" "9")))))
(assert (str.in_re a (re.union (re.* (re.* (re.range "7" "9"))) (str.to_re "3"))))

(assert (>= (+ (* 10 (str.to_int x)) (* 7 (str.to_int y)) (* (- 4) (str.to_int z)) (* 2 (str.to_int a))) 64))
(assert (>= (+ (* (- 7) (str.len x)) (* (- 5) (str.len y)) (* 6 (str.len z)) (* 6 (str.len a))) 79))

(check-sat)