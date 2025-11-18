(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "98")) (str.to_re "21")) (str.to_re "9"))))
(assert (str.in_re y (re.* (str.to_re "21"))))
(assert (str.in_re z (re.* (re.* (re.++ (re.range "1" "9") (str.to_re "2"))))))
(assert (str.in_re a (re.+ (re.+ (re.++ (re.range "5" "7") (re.* (re.range "5" "8")))))))

(assert (< (+ (* (- 4) (str.len x)) (* 7 (str.len y)) (* 10 (str.len z))) 47))
(assert (< (+ (* (- 9) (str.to_int x)) (* 3 (str.to_int y)) (* (- 7) (str.to_int z))) 13))
(assert (<= (+ (* (- 7) (str.len z)) (* 2 (str.to_int x)) (* 5 (str.to_int a))) 26))
(assert (= (+ (* 6 (str.len x)) (str.len a) (* (- 8) (str.to_int x)) (* 10 (str.to_int z))) 50))

(check-sat)