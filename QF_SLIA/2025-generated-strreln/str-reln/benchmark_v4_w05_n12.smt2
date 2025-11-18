(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (re.+ (re.range "0" "4"))) (str.to_re "305"))))
(assert (str.in_re y (re.union (re.range "2" "5") (re.union (str.to_re "39") (re.++ (str.to_re "67") (re.* (str.to_re "77")))))))
(assert (str.in_re z (re.++ (re.* (str.to_re "6")) (str.to_re "81"))))
(assert (str.in_re a (re.union (str.to_re "8") (re.+ (re.+ (str.to_re "92"))))))

(assert (> (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 10) (str.to_int z)) (* (- 3) (str.to_int a))) 79))
(assert (> (+ (str.len x) (str.len y) (* 7 (str.len z)) (* (- 6) (str.len a))) 74))
(assert (< (+ (* (- 3) (str.len y)) (* 9 (str.len z)) (* (- 6) (str.len a)) (* 5 (str.to_int x)) (str.to_int a)) 55))
(assert (= (+ (* (- 6) (str.len x)) (* (- 6) (str.len y)) (* 8 (str.len z)) (* 7 (str.len a))) 75))

(check-sat)