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

(assert (str.in_re x (re.++ (re.++ (str.to_re "84") (re.* (str.to_re "463"))) (re.+ (str.to_re "639")))))
(assert (str.in_re a (re.++ (re.* (re.* (str.to_re "7"))) (re.range "5" "7"))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "300")) (str.to_re "45"))))
(assert (str.in_re y (re.* (re.* (re.++ (str.to_re "9") (str.to_re "58"))))))

(assert (> (+ (str.to_int x) (* 4 (str.to_int y)) (* 9 (str.to_int z)) (* (- 2) (str.to_int a))) 23))
(assert (<= (+ (* (- 5) (str.len x)) (* 3 (str.len y)) (- (str.len z)) (* 9 (str.len a))) 54))

(check-sat)