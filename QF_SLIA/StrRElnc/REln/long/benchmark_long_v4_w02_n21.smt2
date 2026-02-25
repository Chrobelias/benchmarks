(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.++ (str.to_re "429") (re.* (re.++ (str.to_re "90") (str.to_re "512"))))))
(assert (str.in_re a (re.union (str.to_re "76") (re.union (str.to_re "9") (re.* (str.to_re "4"))))))
(assert (str.in_re z (re.+ (str.to_re "58"))))
(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "301"))) (str.to_re "36"))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 8) (str.len y)) (str.len z) (* (- 3) (str.len a))) 66))
(assert (< (+ (* 5 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 3) (str.to_int a))) 44))

(check-sat)