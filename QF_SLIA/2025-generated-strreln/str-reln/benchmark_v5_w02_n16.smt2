(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "25") (re.+ (str.to_re "94"))) (re.+ (str.to_re "957")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "34")) (str.to_re "985"))))
(assert (str.in_re z (re.* (re.++ (re.++ (re.+ (str.to_re "878")) (str.to_re "35")) (re.range "0" "5")))))
(assert (str.in_re a (re.* (re.++ (re.* (str.to_re "51")) (str.to_re "41")))))
(assert (str.in_re b (re.* (re.* (re.++ (str.to_re "507") (re.+ (str.to_re "300")))))))

(assert (> (+ (* 3 (str.len x)) (- (str.to_int x)) (* (- 6) (str.to_int z))) 4))

(check-sat)