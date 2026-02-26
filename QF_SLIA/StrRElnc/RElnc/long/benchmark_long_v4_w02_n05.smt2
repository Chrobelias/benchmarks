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
(assert (>= (str.len a) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ x z "71" "82" a "75")))

(assert (str.in_re x (re.+ (str.to_re "893"))))
(assert (str.in_re z (re.union (re.union (str.to_re "99") (re.+ (str.to_re "560"))) (str.to_re "0"))))
(assert (str.in_re a (re.++ (re.++ (str.to_re "78") (re.union (re.* (str.to_re "270")) (str.to_re "885"))) (str.to_re "395"))))
(assert (str.in_re y (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "30") (re.* (str.to_re "16"))))))

(assert (< (+ (* 5 (str.len x)) (* 9 (str.to_int y)) (- (str.to_int a))) 100))

(check-sat)